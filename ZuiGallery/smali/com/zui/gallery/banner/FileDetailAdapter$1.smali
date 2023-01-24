.class Lcom/zui/gallery/banner/FileDetailAdapter$1;
.super Ljava/lang/Object;
.source "FileDetailAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/banner/FileDetailAdapter;->lambda$setPrimaryItem$0(Lcom/github/chrisbanes/photoview/PhotoView;Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/FileDetailAdapter;

.field final synthetic val$image:Lcom/github/chrisbanes/photoview/PhotoView;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/FileDetailAdapter;Lcom/github/chrisbanes/photoview/PhotoView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/zui/gallery/banner/FileDetailAdapter$1;->this$0:Lcom/zui/gallery/banner/FileDetailAdapter;

    iput-object p2, p0, Lcom/zui/gallery/banner/FileDetailAdapter$1;->val$image:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/zui/gallery/banner/FileDetailAdapter$1;->val$image:Lcom/github/chrisbanes/photoview/PhotoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setVisibility(I)V

    return-void
.end method
