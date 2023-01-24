.class Lcom/zui/gallery/widget/WidgetMangerSingle$1;
.super Ljava/lang/Object;
.source "WidgetMangerSingle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetMangerSingle;->changedAppWidget(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/content/Context;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$1;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    iput-object p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 166
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/zui/gallery/widget/AppWidget;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 169
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    .line 170
    iget-object v5, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$1;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$1;->val$context:Landroid/content/Context;

    aget v4, v4, v3

    invoke-virtual {v5, v6, v0, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->onAppWidgetUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
