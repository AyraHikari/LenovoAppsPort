.class Lcom/zui/gallery/app/AlbumAddPage$8$1;
.super Ljava/lang/Object;
.source "AlbumAddPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumAddPage$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/AlbumAddPage$8;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumAddPage$8;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$8$1;->this$1:Lcom/zui/gallery/app/AlbumAddPage$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$8$1;->this$1:Lcom/zui/gallery/app/AlbumAddPage$8;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p2}, Lcom/zui/gallery/app/AlbumAddPage;->access$1900(Lcom/zui/gallery/app/AlbumAddPage;Z)V

    .line 779
    invoke-static {}, Lcom/zui/gallery/app/AlbumSetAddPage;->clearClicked()V

    .line 780
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
