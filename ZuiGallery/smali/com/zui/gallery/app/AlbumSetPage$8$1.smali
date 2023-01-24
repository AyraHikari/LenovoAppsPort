.class Lcom/zui/gallery/app/AlbumSetPage$8$1;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetPage$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/AlbumSetPage$8;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetPage$8;Ljava/lang/String;)V
    .locals 0

    .line 1369
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$8$1;->this$1:Lcom/zui/gallery/app/AlbumSetPage$8;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetPage$8$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1372
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$8$1;->this$1:Lcom/zui/gallery/app/AlbumSetPage$8;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetPage$8$1;->val$str:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetPage$8$1;->val$str:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/cloud/CloudManager;->setAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
