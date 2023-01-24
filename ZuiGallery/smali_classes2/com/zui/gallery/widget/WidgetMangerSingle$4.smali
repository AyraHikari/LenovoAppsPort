.class Lcom/zui/gallery/widget/WidgetMangerSingle$4;
.super Ljava/lang/Object;
.source "WidgetMangerSingle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetMangerSingle;->resetLoadDefault(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

.field final synthetic val$deleteUri:I

.field final synthetic val$uriList:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetMangerSingle;II)V
    .locals 0

    .line 1282
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$4;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    iput p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$4;->val$uriList:I

    iput p3, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$4;->val$deleteUri:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1286
    iget v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$4;->val$uriList:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$4;->val$deleteUri:I

    if-le v2, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$4;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$600(Lcom/zui/gallery/widget/WidgetMangerSingle;)V

    .line 1290
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$4;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$700(Lcom/zui/gallery/widget/WidgetMangerSingle;)V

    .line 1292
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$4;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->access$400(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/widget/RemoteViews;)V

    :cond_1
    return-void
.end method
