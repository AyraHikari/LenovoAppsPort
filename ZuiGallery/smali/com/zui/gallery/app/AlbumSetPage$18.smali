.class Lcom/zui/gallery/app/AlbumSetPage$18;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetPage;->updateTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetPage;)V
    .locals 0

    .line 1778
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$18;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1781
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1782
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$18;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v1, Lcom/zui/gallery/cloud/CloudSettingActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1783
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$18;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
