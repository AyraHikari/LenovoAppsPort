.class Lcom/zui/gallery/app/AlbumPage$13;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->updateTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 1867
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$13;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1870
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$13;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumPage;->onBackPressed()V

    return-void
.end method
