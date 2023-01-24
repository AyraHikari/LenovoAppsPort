.class Lcom/zui/gallery/util/GalleryUtils$2;
.super Ljava/lang/Object;
.source "GalleryUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/util/GalleryUtils;->showImageEditorChooser(Landroid/app/Activity;ILandroid/net/Uri;Lcom/zui/gallery/app/PhotoPage$PhotoEditorCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$mediaType:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(ILandroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    .line 1109
    iput p1, p0, Lcom/zui/gallery/util/GalleryUtils$2;->val$mediaType:I

    iput-object p2, p0, Lcom/zui/gallery/util/GalleryUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zui/gallery/util/GalleryUtils$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1112
    iget p1, p0, Lcom/zui/gallery/util/GalleryUtils$2;->val$mediaType:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/util/GalleryUtils$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/zui/gallery/util/GalleryUtils$2;->val$uri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GalleryUtils;->access$100(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 1117
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/util/GalleryUtils$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/zui/gallery/util/GalleryUtils$2;->val$uri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GalleryUtils;->access$000(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 1114
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/util/GalleryUtils$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/zui/gallery/util/GalleryUtils$2;->val$uri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/zui/gallery/util/GalleryUtils;->start360ModeEditor(Landroid/app/Activity;Landroid/net/Uri;Z)V

    :goto_0
    return-void
.end method
