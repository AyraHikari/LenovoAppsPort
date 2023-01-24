.class Lcom/zui/gallery/widget/WidgetManger4x2$1;
.super Ljava/lang/Object;
.source "WidgetManger4x2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetManger4x2;->onCreateWidget()V
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

    .line 113
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$1;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2$1;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$100(Lcom/zui/gallery/widget/WidgetManger4x2;)V

    .line 118
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2$1;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$200(Lcom/zui/gallery/widget/WidgetManger4x2;)V

    .line 120
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2$1;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$300(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/widget/RemoteViews;)V

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2$1;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$400(Lcom/zui/gallery/widget/WidgetManger4x2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "isWidget4x2"

    .line 125
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->queryConformToTheRules(Ljava/lang/String;)V

    return-void
.end method
