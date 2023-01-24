.class Lcom/zui/gallery/app/AlbumSetAddPage$15;
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

    .line 1360
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$15;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1363
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$15;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->onBackPressed()V

    return-void
.end method
