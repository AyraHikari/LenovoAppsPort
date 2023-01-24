.class Lcom/zui/gallery/app/MoreAlbumSetPage$3;
.super Ljava/lang/Object;
.source "MoreAlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage;->setupCameraButton()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$3;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 532
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$3;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    return-void
.end method
