#!/usr/bin/env python

"""
Autor: Carlos Aznarán <caznaranl@uni.pe>
"""

import pandas as pd
import matplotlib.pyplot as plt
import unicodedata
import numpy as np


def remove_accent(input_str):
    nfkd_form = unicodedata.normalize("NFKD", input_str)
    return "".join([c for c in nfkd_form if not unicodedata.combining(c)])


df = pd.read_csv(
    filepath_or_buffer="Preinscripción del Taller de LaTeX 2025-2.csv",
    sep=",",
    header=0,
)
df.columns = [
    "Timestamp",
    "Nombres",
    "Especialidad",
    "Correo",
    "Horario",
    "Asistencia_Instalacion",
]
df["Especialidad_clean"] = (
    df["Especialidad"].str.strip().str.lower().apply(remove_accent)
)

career_map = {
    "matematica": "Matemática",
    "fisica": "Física",
    "quimica": "Química",
    "ingenieria civil": "Ingeniería Civil",
    "ingenieria quimica": "Ingeniería Química",
    "ingenieria estadistica": "Ingeniería Estadística",
    "fim": "Ingeniería Mecánica",
    "ingenieria fisica": "Ingeniería Física",
}
df["Especialidad"] = df["Especialidad_clean"].map(career_map)

especialidad_counts = df["Especialidad"].value_counts()
with plt.style.context("ggplot"):
    fig, ax = plt.subplots(layout="constrained")
    colors = plt.get_cmap("gist_rainbow")(
        np.linspace(start=0, stop=1, num=len(especialidad_counts))
    )
    ax.bar(
        align="center",
        alpha=0.6,
        bottom=None,
        color=colors,
        data=None,
        edgecolor="black",
        height=especialidad_counts.values,
        width=0.5,
        x=especialidad_counts.index,
    )
    # ax.set_xlabel(color="DarkBlue", fontsize=12, loc="center", xlabel="Especialidad")
    ax.set_ylabel(
        color="DarkBlue",
        fontsize=10,
        loc="top",
        ylabel="Número de inscritos",
    )
    ax.set_title(
        color="DarkBlue",
        fontsize=12,
        label="Tabla de frecuencias por especialidad",
        wrap=True,
        loc="center",
        weight="bold",
    )
    plt.xticks(rotation=45, ha="right", color="DarkBlue")
    ax.set_ylim(0, especialidad_counts.values.max())
    ax.set_aspect("equal", adjustable="box")
    ax.grid(c="gray", linewidth=0.1, linestyle="dashed")
    ax.spines["bottom"].set_color("none")
    ax.spines["top"].set_color("none")
    ax.spines["left"].set_color("none")
    ax.spines["right"].set_color("none")
    plt.savefig("professions.pdf", bbox_inches="tight", transparent=True)
    plt.close("all")


horario_counts = df["Horario"].value_counts()
with plt.style.context("ggplot"):
    fig, ax = plt.subplots(layout="constrained")
    colors = plt.get_cmap("gist_rainbow")(np.linspace(0, 1, len(horario_counts)))
    wedges, texts, autotexts = ax.pie(
        autopct=lambda p: f"{p * sum(horario_counts.values) / 100:.0f}",
        colors=colors,
        counterclock=False,
        explode=[0.05] * len(horario_counts),
        pctdistance=0.85,
        labeldistance=None,
        # labels=preferencias_varones.keys(),
        shadow=True,
        startangle=140,
        x=horario_counts.values,
    )
    ax.set_title(
        color="DarkBlue",
        fontsize=15,
        fontweight="bold",
        label="Gráfico circular de preferencia de horarios",
        wrap=True,
        loc="center",
    )
    # ax.set_aspect("equal", adjustable="box")
    ax.legend(
        wedges,
        horario_counts.index,
        bbox_to_anchor=(1, 0, 0.5, 1),
        fancybox=True,
        loc="center left",
        title="Horarios",
        shadow=True,
    )
    # ax.set_ylabel(ylabel="")
    plt.savefig("schedule.pdf", bbox_inches="tight", transparent=True)
    plt.close("all")


df["Asistencia_Instalacion"] = df["Asistencia_Instalacion"].fillna("No responde")
asistencia_counts = df["Asistencia_Instalacion"].value_counts()
with plt.style.context("ggplot"):
    fig, ax = plt.subplots(layout="constrained")
    colors = plt.get_cmap("gist_rainbow")(
        np.linspace(start=0, stop=1, num=len(asistencia_counts))
    )
    ax.bar(
        align="center",
        alpha=0.6,
        bottom=None,
        color=colors,
        data=None,
        edgecolor="black",
        height=asistencia_counts.values,
        width=0.5,
        x=asistencia_counts.index,
    )
    # ax.set_xlabel(color="DarkBlue", fontsize=12, loc="center", xlabel="Respuesta")
    ax.set_ylabel(
        color="DarkBlue",
        fontsize=10,
        loc="top",
        ylabel="Número de inscritos",
    )
    ax.set_title(
        color="DarkBlue",
        fontsize=12,
        label="¿Necesita ayuda en la instalación de " + r"\LaTeX" + "?",
        wrap=True,
        loc="center",
        weight="bold",
    )
    plt.xticks(rotation=45, ha="center", color="DarkBlue")
    ax.set_ylim(0, asistencia_counts.values.max())
    ax.set_aspect("equal", adjustable="box")
    ax.grid(c="gray", linewidth=0.1, linestyle="dashed")
    ax.spines["bottom"].set_color("none")
    ax.spines["top"].set_color("none")
    ax.spines["left"].set_color("none")
    ax.spines["right"].set_color("none")
    plt.savefig("support.pdf", bbox_inches="tight", transparent=True)
    plt.close("all")
