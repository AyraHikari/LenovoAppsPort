.class public Lcom/zui/gallery/filtershow/editors/EditorMirror;
.super Lcom/zui/gallery/filtershow/editors/Editor;
.source "EditorMirror.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/editors/EditorInfo;


# static fields
.field public static final ID:I = 0x7f080175

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mImageMirror:Lcom/zui/gallery/filtershow/imageshow/ImageMirror;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/zui/gallery/filtershow/editors/EditorMirror;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f080175

    .line 40
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mChangesGeometry:Z

    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 47
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mImageMirror:Lcom/zui/gallery/filtershow/imageshow/ImageMirror;

    if-nez p2, :cond_0

    .line 48
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageMirror;

    invoke-direct {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageMirror;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mImageMirror:Lcom/zui/gallery/filtershow/imageshow/ImageMirror;

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mImageMirror:Lcom/zui/gallery/filtershow/imageshow/ImageMirror;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mView:Landroid/view/View;

    .line 51
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mImageMirror:Lcom/zui/gallery/filtershow/imageshow/ImageMirror;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageMirror;->setEditor(Lcom/zui/gallery/filtershow/editors/EditorMirror;)V

    return-void
.end method

.method public finalApplyCalled()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mImageMirror:Lcom/zui/gallery/filtershow/imageshow/ImageMirror;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageMirror;->getFinalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorMirror;->commitLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public getOverlayId()I
    .locals 1

    const v0, 0x7f07015c

    return v0
.end method

.method public getOverlayOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTextId()I
    .locals 1

    const v0, 0x7f1001a9

    return v0
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 1

    const v0, 0x7f080060

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 73
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorMirror$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorMirror$1;-><init>(Lcom/zui/gallery/filtershow/editors/EditorMirror;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v1

    const-string v2, "MIRROR"

    .line 58
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterWithSerializationName(Ljava/lang/String;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 59
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 60
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorMirror;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not reflect current filter, not of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mImageMirror:Lcom/zui/gallery/filtershow/imageshow/ImageMirror;

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageMirror;->setFilterMirrorRepresentation(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;)V

    .line 67
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mImageMirror:Lcom/zui/gallery/filtershow/imageshow/ImageMirror;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageMirror;->invalidate()V

    return-void
.end method

.method public showsPopupIndicator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showsSeekBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
