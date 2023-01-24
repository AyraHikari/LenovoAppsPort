.class Lcom/zui/gallery/widget/WidgetMangerSingle$3;
.super Ljava/lang/Object;
.source "WidgetMangerSingle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetMangerSingle;->onCreateWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetMangerSingle;)V
    .locals 0

    .line 1120
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$3;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$3;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$400(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/widget/RemoteViews;)V

    .line 1125
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$3;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$500(Lcom/zui/gallery/widget/WidgetMangerSingle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "isWidget4x3"

    .line 1129
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->queryConformToTheRules(Ljava/lang/String;)V

    return-void
.end method
