.class Lcom/zui/gallery/widget/WidgetMangerSingle$2;
.super Ljava/lang/Object;
.source "WidgetMangerSingle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetMangerSingle;->processingBitmap()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

.field final synthetic val$downLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$isPort:Z

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetMangerSingle;JZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    iput-wide p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->val$startTime:J

    iput-boolean p4, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->val$isPort:Z

    iput-object p5, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->val$downLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 615
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 620
    iget-object v3, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v3}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processingBitmap: 2 =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->val$startTime:J

    sub-long/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 623
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processingBitmap: 3  =="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->val$startTime:J

    sub-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/zui/gallery/widget/WidgetMangerSingle;->imageCrop(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 627
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processingBitmap: 4  =="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->val$startTime:J

    sub-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    const-string v2, "albumImage_blurry"

    invoke-static {v1, v2, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$300(Lcom/zui/gallery/widget/WidgetMangerSingle;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 629
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    iget-boolean v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->val$isPort:Z

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    const-string v2, "screen_port"

    invoke-static {v1, v2, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$300(Lcom/zui/gallery/widget/WidgetMangerSingle;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    const-string v2, "screen_land"

    invoke-static {v1, v2, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$300(Lcom/zui/gallery/widget/WidgetMangerSingle;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 636
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$2;->val$downLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
