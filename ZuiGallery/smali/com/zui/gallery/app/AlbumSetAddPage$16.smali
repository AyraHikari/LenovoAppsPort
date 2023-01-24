.class Lcom/zui/gallery/app/AlbumSetAddPage$16;
.super Ljava/lang/Object;
.source "AlbumSetAddPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;->updateTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$16;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1383
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$16;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$2800(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    .line 1384
    invoke-static {}, Lcom/zui/gallery/app/AlbumSetAddPage;->clearClicked()V

    return-void
.end method
