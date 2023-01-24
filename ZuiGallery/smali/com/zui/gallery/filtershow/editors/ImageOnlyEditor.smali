.class public Lcom/zui/gallery/filtershow/editors/ImageOnlyEditor;
.super Lcom/zui/gallery/filtershow/editors/Editor;
.source "ImageOnlyEditor.java"


# static fields
.field public static final ID:I = 0x7f0801e9


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0801e9

    .line 33
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    const-string v0, "ImageOnlyEditor"

    .line 30
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/ImageOnlyEditor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    const-string p1, "ImageOnlyEditor"

    .line 30
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/ImageOnlyEditor;->LOGTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 47
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-direct {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/ImageOnlyEditor;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/ImageOnlyEditor;->mView:Landroid/view/View;

    return-void
.end method

.method public useUtilityPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
