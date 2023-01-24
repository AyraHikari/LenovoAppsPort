.class Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$CompletionListener;
.super Ljava/lang/Object;
.source "TrashPreviewPagerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompletionListener"
.end annotation


# instance fields
.field private img:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$CompletionListener;->this$0:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 243
    iput-object p2, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$CompletionListener;->img:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 250
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$CompletionListener;->img:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 251
    iget-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$CompletionListener;->this$0:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

    invoke-static {p1}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->access$000(Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
