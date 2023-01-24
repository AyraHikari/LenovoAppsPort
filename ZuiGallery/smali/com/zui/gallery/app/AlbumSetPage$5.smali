.class Lcom/zui/gallery/app/AlbumSetPage$5;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/AlbumSetSlotView$AlbumsetFolderNameOnclickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetPage;->initializeViews()V
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

    .line 1093
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetPage$5;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetPage$5;->this$0:Lcom/zui/gallery/app/AlbumSetPage;

    invoke-static {v0, p1, p2}, Lcom/zui/gallery/app/AlbumSetPage;->access$1800(Lcom/zui/gallery/app/AlbumSetPage;Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    return-void
.end method
