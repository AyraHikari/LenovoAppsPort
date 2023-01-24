.class public Lcom/zui/gallery/filtershow/editors/EditorRedEye;
.super Lcom/zui/gallery/filtershow/editors/Editor;
.source "EditorRedEye.java"


# static fields
.field public static ID:I = 0x7f080179


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field mImageRedEyes:Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    sget v0, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->ID:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    const-string v0, "EditorRedEye"

    .line 32
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    const-string p1, "EditorRedEye"

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->LOGTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 46
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;

    invoke-direct {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->mImageRedEyes:Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->mView:Landroid/view/View;

    .line 47
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->mImageRedEyes:Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->setEditor(Lcom/zui/gallery/filtershow/editors/EditorRedEye;)V

    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 53
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    .line 57
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->mImageRedEyes:Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;)V

    :cond_0
    return-void
.end method

.method public showsSeekBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
