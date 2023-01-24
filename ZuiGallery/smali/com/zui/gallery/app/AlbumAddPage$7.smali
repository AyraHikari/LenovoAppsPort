.class Lcom/zui/gallery/app/AlbumAddPage$7;
.super Ljava/lang/Object;
.source "AlbumAddPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumAddPage;->updateTitileBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumAddPage;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 763
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$7;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    return-void
.end method
