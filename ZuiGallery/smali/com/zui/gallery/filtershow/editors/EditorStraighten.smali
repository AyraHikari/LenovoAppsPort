.class public Lcom/zui/gallery/filtershow/editors/EditorStraighten;
.super Lcom/zui/gallery/filtershow/editors/Editor;
.source "EditorStraighten.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/editors/EditorInfo;


# static fields
.field public static final ID:I = 0x7f08017b

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mImageStraighten:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f08017b

    .line 36
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    .line 37
    sget-byte v0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->SHOW_VALUE_INT:B

    iput-byte v0, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mShowParameter:B

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mChangesGeometry:Z

    return-void
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    const p3, 0x7f10004c

    .line 43
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 51
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    if-nez p2, :cond_0

    .line 52
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    invoke-direct {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mView:Landroid/view/View;

    .line 55
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->setEditor(Lcom/zui/gallery/filtershow/editors/EditorStraighten;)V

    return-void
.end method

.method public finalApplyCalled()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->getFinalRepresentation()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->commitLocalRepresentation(Ljava/util/Collection;)V

    return-void
.end method

.method public getOverlayId()I
    .locals 1

    const v0, 0x7f07015e

    return v0
.end method

.method public getOverlayOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTextId()I
    .locals 1

    const v0, 0x7f100273

    return v0
.end method

.method public reflectCurrentFilter()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v1

    const-string v2, "STRAIGHTEN"

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterWithSerializationName(Ljava/lang/String;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 63
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 64
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not reflect current filter, not of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    .line 67
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->setFilterStraightenRepresentation(Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;)V

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorStraighten;->mImageStraighten:Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageStraighten;->invalidate()V

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
