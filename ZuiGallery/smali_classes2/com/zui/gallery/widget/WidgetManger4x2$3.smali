.class Lcom/zui/gallery/widget/WidgetManger4x2$3;
.super Ljava/lang/Object;
.source "WidgetManger4x2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetManger4x2;->loadDefaultIcon(Landroid/widget/RemoteViews;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$finalRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$3;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    iput-object p2, p0, Lcom/zui/gallery/widget/WidgetManger4x2$3;->val$finalRemoteViews:Landroid/widget/RemoteViews;

    iput-object p3, p0, Lcom/zui/gallery/widget/WidgetManger4x2$3;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 230
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isChinese()Z

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$3;->val$finalRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f0803c6

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 233
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$3;->val$appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2$3;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v2}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$500(Lcom/zui/gallery/widget/WidgetManger4x2;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "extra_new_layout_config"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    const v3, 0x7f0703af

    goto :goto_0

    :cond_0
    const v3, 0x7f0703b2

    .line 237
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "5x6"

    .line 239
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "5x4"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    const v0, 0x7f0703b0

    goto :goto_1

    :cond_2
    const v0, 0x7f0703b1

    :goto_1
    move v3, v0

    .line 243
    :cond_3
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$3;->val$finalRemoteViews:Landroid/widget/RemoteViews;

    const v2, 0x7f0801e6

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 246
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2$3;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$3;->val$appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2$3;->val$finalRemoteViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$600(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-void
.end method
