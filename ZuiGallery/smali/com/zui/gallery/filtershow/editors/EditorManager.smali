.class public Lcom/zui/gallery/filtershow/editors/EditorManager;
.super Ljava/lang/Object;
.source "EditorManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEditors(Lcom/zui/gallery/filtershow/EditorPlaceHolder;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 38
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorChanSat;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 39
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorZoom;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorZoom;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 40
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorCurves;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorCurves;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 41
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 42
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 43
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorVignette;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorVignette;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 44
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 45
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorMirror;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorMirror;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 46
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorRotate;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorRotate;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 47
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorStraighten;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 48
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 49
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorCaption;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorCaption;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    return-void
.end method
