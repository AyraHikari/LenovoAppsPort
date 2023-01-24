.class public final synthetic Lcom/zui/gallery/ui/localtime/-$$Lambda$LocalTimeAlbumSlotRenderer$pG14mfbVMie8McD64p9x24_iCqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

.field public final synthetic f$1:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/-$$Lambda$LocalTimeAlbumSlotRenderer$pG14mfbVMie8McD64p9x24_iCqg;->f$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/-$$Lambda$LocalTimeAlbumSlotRenderer$pG14mfbVMie8McD64p9x24_iCqg;->f$1:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/-$$Lambda$LocalTimeAlbumSlotRenderer$pG14mfbVMie8McD64p9x24_iCqg;->f$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/-$$Lambda$LocalTimeAlbumSlotRenderer$pG14mfbVMie8McD64p9x24_iCqg;->f$1:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->lambda$renderLabel$0$LocalTimeAlbumSlotRenderer(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)V

    return-void
.end method
