.class public Lcom/zui/gallery/widget/AppWidget4x2;
.super Landroid/appwidget/AppWidgetProvider;
.source "AppWidget4x2.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zlq4x2  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/widget/AppWidget4x2;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/widget/AppWidget4x2;->TAG:Ljava/lang/String;

    const-string v1, "onAppWidgetOptionsChanged: "

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 92
    iget-object p1, p0, Lcom/zui/gallery/widget/AppWidget4x2;->TAG:Ljava/lang/String;

    const-string p2, "onDeleted Widget success\uff01"

    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 102
    iget-object p1, p0, Lcom/zui/gallery/widget/AppWidget4x2;->TAG:Ljava/lang/String;

    const-string v0, "onDisabled widget success\uff01"

    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 82
    iget-object p1, p0, Lcom/zui/gallery/widget/AppWidget4x2;->TAG:Ljava/lang/String;

    const-string v0, "create Widget success\uff01"

    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/zui/gallery/widget/AppWidget4x2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.zui.gallery.widget.AppWidget"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->launcherReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->onCreateWidget()V

    goto :goto_1

    :cond_1
    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->deleted()V

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.TIME_TICK"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.intent.action.TIME_SET"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "com.zui.action.click4x2"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->openGalleryPhoto()V

    goto :goto_1

    :cond_4
    const-string v1, "com.zui.action.click.lock4x2"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->widgetLock()V

    goto :goto_1

    :cond_5
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 49
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->configurationSizeChange()V

    goto :goto_1

    :cond_6
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 52
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->configurationChanges()V

    goto :goto_1

    .line 40
    :cond_7
    :goto_0
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->setBanner()V

    .line 54
    :cond_8
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onRestored(Landroid/content/Context;[I[I)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/widget/AppWidget4x2;->TAG:Ljava/lang/String;

    const-string v1, "onRestored Widget "

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/zui/gallery/widget/AppWidget4x2;->TAG:Ljava/lang/String;

    const-string v1, "====  onUpdate ==== "

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 69
    aget v2, p3, v1

    .line 70
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2}, Lcom/zui/gallery/widget/WidgetManger4x2;->onAppWidgetUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method
