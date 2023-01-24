.class Lcom/zui/gallery/app/MovieActivity$4;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MovieActivity;->reduceRefreshRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MovieActivity;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/zui/gallery/app/MovieActivity$4;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity$4;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/MovieActivity;->access$100(Lcom/zui/gallery/app/MovieActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity$4;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->putCurrentRefreshRate(Landroid/app/Activity;)V

    .line 241
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity$4;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "peak_refresh_rate"

    const-string v2, "60"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
