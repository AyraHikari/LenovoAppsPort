.class Lcom/zui/gallery/app/MoreAlbumSetPage$17;
.super Ljava/lang/Object;
.source "MoreAlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage;->updateTitleBar()V
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

    .line 1580
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$17;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1583
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$17;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-virtual {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->onBackPressed()V

    return-void
.end method
