.class public Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;
.super Lcom/zui/gallery/filtershow/editors/BasicEditor;
.source "EditorTinyPlanet.java"


# static fields
.field public static final ID:I = 0x7f080365

.field private static final LOGTAG:Ljava/lang/String; = "EditorTinyPlanet"


# instance fields
.field mImageTinyPlanet:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080365

    const v1, 0x7f0b006a

    const v2, 0x7f0801ed

    .line 33
    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/filtershow/editors/BasicEditor;-><init>(III)V

    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 39
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    check-cast p1, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;->mImageTinyPlanet:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    .line 40
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->setEditor(Lcom/zui/gallery/filtershow/editors/BasicEditor;)V

    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/BasicEditor;->reflectCurrentFilter()V

    .line 46
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    if-eqz v1, :cond_0

    .line 48
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 49
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;->mImageTinyPlanet:Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageTinyPlanet;->setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;)V

    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/controller/Control;->updateUI()V

    :cond_0
    return-void
.end method
