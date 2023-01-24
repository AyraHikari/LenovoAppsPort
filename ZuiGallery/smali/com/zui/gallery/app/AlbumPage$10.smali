.class Lcom/zui/gallery/app/AlbumPage$10;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->updateTitleBarRightView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;

.field final synthetic val$add:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;Z)V
    .locals 0

    .line 1628
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$10;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iput-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage$10;->val$add:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1631
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage$10;->val$add:Z

    if-eqz p1, :cond_0

    .line 1632
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$10;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2300(Lcom/zui/gallery/app/AlbumPage;)V

    goto :goto_0

    .line 1634
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$10;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2400(Lcom/zui/gallery/app/AlbumPage;)V

    :goto_0
    return-void
.end method
