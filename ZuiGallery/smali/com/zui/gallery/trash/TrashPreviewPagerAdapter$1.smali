.class Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$1;
.super Ljava/lang/Object;
.source "TrashPreviewPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->lambda$videoPlay$0(Landroid/widget/VideoView;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

.field final synthetic val$backGroundImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$1;->this$0:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

    iput-object p2, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$1;->val$backGroundImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter$1;->val$backGroundImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
