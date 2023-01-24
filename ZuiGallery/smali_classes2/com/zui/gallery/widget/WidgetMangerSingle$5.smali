.class Lcom/zui/gallery/widget/WidgetMangerSingle$5;
.super Ljava/lang/Object;
.source "WidgetMangerSingle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetMangerSingle;->loadDefaultIcon(Landroid/widget/RemoteViews;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

.field final synthetic val$finalViews:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1305
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    iput-object p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->val$finalViews:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1309
    :cond_0
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isChinese()Z

    move-result v0

    .line 1310
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->getWidgetDefault()Ljava/lang/String;

    move-result-object v1

    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zui/gallery/widget/WidgetListener$WidgetAction;->OLD_FILE_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1312
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isPhonePort()Z

    move-result v2

    const v3, 0x7f0701f7

    const v4, 0x7f0701f8

    const v5, 0x7f0801e5

    if-eqz v2, :cond_3

    .line 1315
    invoke-static {v1}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1317
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1318
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$800(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1319
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->val$finalViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1329
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1330
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1331
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1333
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$800(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1334
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->val$finalViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1336
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->val$finalViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$900(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_4

    .line 1340
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1343
    invoke-static {v1}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1345
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1350
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$800(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1351
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->val$finalViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    .line 1362
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1363
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1364
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1365
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$800(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1366
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->val$finalViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1368
    :goto_3
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$5;->val$finalViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$900(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/content/Context;Landroid/widget/RemoteViews;)V

    :goto_4
    return-void
.end method
