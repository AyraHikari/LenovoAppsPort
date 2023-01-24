.class Lcom/zui/gallery/widget/WidgetManger4x2$4;
.super Ljava/lang/Object;
.source "WidgetManger4x2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetManger4x2;->setContentUriThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetManger4x2;Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    iput-object p2, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, " ms"

    .line 543
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v2}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$500(Lcom/zui/gallery/widget/WidgetManger4x2;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b002d

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 545
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->val$filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 547
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$700(Lcom/zui/gallery/widget/WidgetManger4x2;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "setContentUriThread 1  startTime  "

    invoke-static {v4, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->val$filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetUtils;->decodeFileBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 549
    iget-object v5, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v5}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$700(Lcom/zui/gallery/widget/WidgetManger4x2;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setContentUriThread 2  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v5, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v5, v4}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$800(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 553
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v6}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$700(Lcom/zui/gallery/widget/WidgetManger4x2;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setContentUriThread 3  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v6}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$900(Lcom/zui/gallery/widget/WidgetManger4x2;)I

    move-result v6

    iget-object v7, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v7}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$1000(Lcom/zui/gallery/widget/WidgetManger4x2;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/zui/gallery/widget/WidgetUtils;->detectWH(II)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 557
    :cond_0
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->val$filePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v7}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$900(Lcom/zui/gallery/widget/WidgetManger4x2;)I

    move-result v7

    iget-object v8, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v8}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$1000(Lcom/zui/gallery/widget/WidgetManger4x2;)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/zui/gallery/widget/WidgetUtils;->detectBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 558
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v6}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$700(Lcom/zui/gallery/widget/WidgetManger4x2;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setContentUriThread 4  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f0801e6

    .line 560
    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 561
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v6}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$700(Lcom/zui/gallery/widget/WidgetManger4x2;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setContentUriThread 6  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    iget-object v7, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->val$filePath:Ljava/lang/String;

    invoke-static {v6, v7, v5, v4}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$1100(Lcom/zui/gallery/widget/WidgetManger4x2;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 564
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v4, v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$1200(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/widget/RemoteViews;)V

    .line 565
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    iget-object v5, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v5}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$500(Lcom/zui/gallery/widget/WidgetManger4x2;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$600(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 566
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$700(Lcom/zui/gallery/widget/WidgetManger4x2;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContentUriThread 7  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 569
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$4;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$700(Lcom/zui/gallery/widget/WidgetManger4x2;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContentUriThread  e == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
