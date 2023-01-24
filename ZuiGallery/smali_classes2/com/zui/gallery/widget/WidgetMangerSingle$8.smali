.class Lcom/zui/gallery/widget/WidgetMangerSingle$8;
.super Ljava/lang/Object;
.source "WidgetMangerSingle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetMangerSingle;->setContentUriThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetMangerSingle;Ljava/lang/String;)V
    .locals 0

    .line 1917
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    iput-object p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, " ms"

    .line 1921
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b002c

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1923
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->val$filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1925
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "setContentUriThread 1  startTime  "

    invoke-static {v4, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->val$filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetUtils;->decodeFileBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1927
    iget-object v5, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v5}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

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

    .line 1929
    iget-object v5, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/zui/gallery/widget/WidgetMangerSingle;->imageCrop(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1931
    iget-object v7, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v7}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setContentUriThread 3  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v7, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->val$filePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v8}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$1000(Lcom/zui/gallery/widget/WidgetMangerSingle;)I

    move-result v8

    iget-object v9, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v9}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$1100(Lcom/zui/gallery/widget/WidgetMangerSingle;)I

    move-result v9

    invoke-static {v5, v7, v8, v9}, Lcom/zui/gallery/widget/WidgetUtils;->detectBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1933
    iget-object v7, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v7}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setContentUriThread 4  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    sget v7, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->RADIUS_OF_FILLET:I

    const/16 v8, 0xb

    invoke-static {v5, v7, v8}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->fillet(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1936
    iget-object v7, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v7}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setContentUriThread 5  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f0801e5

    .line 1938
    invoke-virtual {v1, v7, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1939
    iget-object v7, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v7}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setContentUriThread 6  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget-object v7, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    iget-object v8, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->val$filePath:Ljava/lang/String;

    invoke-static {v7, v8, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$1200(Lcom/zui/gallery/widget/WidgetMangerSingle;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const v4, 0x7f0803c5

    .line 1942
    invoke-virtual {v1, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1943
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v4, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$1300(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/widget/RemoteViews;)V

    .line 1944
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v6}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$900(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 1945
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContentUriThread 7  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v0, v5}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$1400(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1950
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$8;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ex == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
