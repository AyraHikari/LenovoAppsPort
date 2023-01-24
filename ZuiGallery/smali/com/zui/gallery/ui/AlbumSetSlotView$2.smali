.class Lcom/zui/gallery/ui/AlbumSetSlotView$2;
.super Ljava/lang/Object;
.source "AlbumSetSlotView.java"

# interfaces
.implements Lcom/zui/gallery/ui/AlbumSetSlotView$OtherFoldersVisiableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlotView;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$2;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisiableChanged(Z)V
    .locals 0

    .line 273
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$2;->this$0:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->startOtherFoderUpHideAnimation()V

    return-void
.end method
