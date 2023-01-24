.class Lzui/widget/ListViewX$LongPressHandler;
.super Landroid/os/Handler;
.source "ListViewX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongPressHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/ListViewX;


# direct methods
.method private constructor <init>(Lzui/widget/ListViewX;)V
    .locals 0

    .line 2221
    iput-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/ListViewX;Lzui/widget/ListViewX$1;)V
    .locals 0

    .line 2221
    invoke-direct {p0, p1}, Lzui/widget/ListViewX$LongPressHandler;-><init>(Lzui/widget/ListViewX;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 2224
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 2262
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$1800(Lzui/widget/ListViewX;)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$2800(Lzui/widget/ListViewX;)Lzui/widget/SlideView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v4

    .line 2264
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2269
    iget-object v0, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$2800(Lzui/widget/ListViewX;)Lzui/widget/SlideView;

    move-result-object v0

    invoke-virtual {v0}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2271
    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$2800(Lzui/widget/ListViewX;)Lzui/widget/SlideView;

    move-result-object p1

    invoke-virtual {p1}, Lzui/widget/SlideView;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    .line 2232
    :cond_1
    iget-object v0, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0, v1}, Lzui/widget/ListViewX;->access$1402(Lzui/widget/ListViewX;Z)Z

    .line 2233
    iget-object v0, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$1500(Lzui/widget/ListViewX;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    .line 2234
    invoke-static {v0}, Lzui/widget/ListViewX;->access$1600(Lzui/widget/ListViewX;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    .line 2235
    invoke-static {v0}, Lzui/widget/ListViewX;->access$1700(Lzui/widget/ListViewX;)Z

    move-result v0

    if-nez v0, :cond_3

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    .line 2236
    invoke-static {v0}, Lzui/widget/ListViewX;->access$1800(Lzui/widget/ListViewX;)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    .line 2237
    invoke-static {p1}, Lzui/widget/ListViewX;->access$1900(Lzui/widget/ListViewX;)I

    move-result p1

    if-nez p1, :cond_3

    .line 2241
    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$2000(Lzui/widget/ListViewX;)Lzui/widget/SlideView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    .line 2242
    invoke-static {p1}, Lzui/widget/ListViewX;->access$2000(Lzui/widget/ListViewX;)Lzui/widget/SlideView;

    move-result-object p1

    invoke-virtual {p1}, Lzui/widget/SlideView;->isViewFixed()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    .line 2243
    invoke-static {p1}, Lzui/widget/ListViewX;->access$2100(Lzui/widget/ListViewX;)Landroid/widget/ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->access$1800(Lzui/widget/ListViewX;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2244
    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$2200(Lzui/widget/ListViewX;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2245
    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$2300(Lzui/widget/ListViewX;)V

    .line 2246
    invoke-static {v2}, Lzui/widget/ListViewX;->access$2402(Z)Z

    goto :goto_0

    .line 2247
    :cond_2
    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$2500(Lzui/widget/ListViewX;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2248
    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$2600(Lzui/widget/ListViewX;)V

    .line 2249
    iget-object p1, p0, Lzui/widget/ListViewX$LongPressHandler;->this$0:Lzui/widget/ListViewX;

    invoke-static {p1}, Lzui/widget/ListViewX;->access$2700(Lzui/widget/ListViewX;)V

    .line 2250
    invoke-static {v2}, Lzui/widget/ListViewX;->access$2402(Z)Z

    :cond_3
    :goto_0
    return-void
.end method
