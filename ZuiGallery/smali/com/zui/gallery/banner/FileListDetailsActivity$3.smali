.class Lcom/zui/gallery/banner/FileListDetailsActivity$3;
.super Ljava/lang/Object;
.source "FileListDetailsActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/banner/FileListDetailsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$3;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$3;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$502(Lcom/zui/gallery/banner/FileListDetailsActivity;I)I

    .line 384
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$3;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$100(Lcom/zui/gallery/banner/FileListDetailsActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$3;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$500(Lcom/zui/gallery/banner/FileListDetailsActivity;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/zui/gallery/banner/MediaFile;->isVideoFileType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$3;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$600(Lcom/zui/gallery/banner/FileListDetailsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$3;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {p1}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$600(Lcom/zui/gallery/banner/FileListDetailsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
