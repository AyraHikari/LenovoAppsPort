.class public final synthetic Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$TkIO0CXVYZjhUytbawryGAB1LX0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/banner/FileDetailAdapter;

.field public final synthetic f$1:Lcom/github/chrisbanes/photoview/PhotoView;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/banner/FileDetailAdapter;Lcom/github/chrisbanes/photoview/PhotoView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$TkIO0CXVYZjhUytbawryGAB1LX0;->f$0:Lcom/zui/gallery/banner/FileDetailAdapter;

    iput-object p2, p0, Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$TkIO0CXVYZjhUytbawryGAB1LX0;->f$1:Lcom/github/chrisbanes/photoview/PhotoView;

    iput-object p3, p0, Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$TkIO0CXVYZjhUytbawryGAB1LX0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$TkIO0CXVYZjhUytbawryGAB1LX0;->f$0:Lcom/zui/gallery/banner/FileDetailAdapter;

    iget-object v1, p0, Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$TkIO0CXVYZjhUytbawryGAB1LX0;->f$1:Lcom/github/chrisbanes/photoview/PhotoView;

    iget-object v2, p0, Lcom/zui/gallery/banner/-$$Lambda$FileDetailAdapter$TkIO0CXVYZjhUytbawryGAB1LX0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/zui/gallery/banner/FileDetailAdapter;->lambda$setPrimaryItem$0$FileDetailAdapter(Lcom/github/chrisbanes/photoview/PhotoView;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
