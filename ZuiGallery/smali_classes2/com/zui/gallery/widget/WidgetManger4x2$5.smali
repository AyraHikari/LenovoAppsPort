.class Lcom/zui/gallery/widget/WidgetManger4x2$5;
.super Ljava/lang/Object;
.source "WidgetManger4x2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetManger4x2;->resetLoadDefault(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

.field final synthetic val$deleteUri:I

.field final synthetic val$uriList:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetManger4x2;II)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$5;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    iput p2, p0, Lcom/zui/gallery/widget/WidgetManger4x2$5;->val$uriList:I

    iput p3, p0, Lcom/zui/gallery/widget/WidgetManger4x2$5;->val$deleteUri:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 584
    iget v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2$5;->val$uriList:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2$5;->val$deleteUri:I

    if-le v2, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 587
    :cond_0
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->clearMap()V

    .line 588
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2$5;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$1300(Lcom/zui/gallery/widget/WidgetManger4x2;)V

    .line 590
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2$5;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->access$300(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/widget/RemoteViews;)V

    :cond_1
    return-void
.end method
