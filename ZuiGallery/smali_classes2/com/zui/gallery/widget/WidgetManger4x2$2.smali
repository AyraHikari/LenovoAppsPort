.class Lcom/zui/gallery/widget/WidgetManger4x2$2;
.super Ljava/lang/Object;
.source "WidgetManger4x2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetManger4x2;


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetManger4x2;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$2;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2$2;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$500(Lcom/zui/gallery/widget/WidgetManger4x2;)Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 155
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 158
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 159
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2$2;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    aget v5, v5, v4

    invoke-virtual {v6, v0, v1, v5}, Lcom/zui/gallery/widget/WidgetManger4x2;->onAppWidgetUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
