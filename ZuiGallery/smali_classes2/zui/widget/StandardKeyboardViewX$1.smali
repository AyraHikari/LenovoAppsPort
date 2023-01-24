.class Lzui/widget/StandardKeyboardViewX$1;
.super Ljava/lang/Object;
.source "StandardKeyboardViewX.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/StandardKeyboardViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/StandardKeyboardViewX;


# direct methods
.method constructor <init>(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX$1;->this$0:Lzui/widget/StandardKeyboardViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 0

    const/4 p2, -0x5

    if-eq p1, p2, :cond_4

    const/4 p2, -0x4

    if-eq p1, p2, :cond_3

    const/4 p2, -0x3

    if-eq p1, p2, :cond_2

    const/4 p2, -0x2

    if-eq p1, p2, :cond_1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 146
    iget-object p2, p0, Lzui/widget/StandardKeyboardViewX$1;->this$0:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p2, p1}, Lzui/widget/StandardKeyboardViewX;->access$600(Lzui/widget/StandardKeyboardViewX;I)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX$1;->this$0:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p1}, Lzui/widget/StandardKeyboardViewX;->access$300(Lzui/widget/StandardKeyboardViewX;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX$1;->this$0:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p1}, Lzui/widget/StandardKeyboardViewX;->access$400(Lzui/widget/StandardKeyboardViewX;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX$1;->this$0:Lzui/widget/StandardKeyboardViewX;

    invoke-virtual {p1}, Lzui/widget/StandardKeyboardViewX;->hideKeyboard()V

    goto :goto_0

    .line 143
    :cond_3
    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX$1;->this$0:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p1}, Lzui/widget/StandardKeyboardViewX;->access$500(Lzui/widget/StandardKeyboardViewX;)V

    goto :goto_0

    .line 131
    :cond_4
    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX$1;->this$0:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p1}, Lzui/widget/StandardKeyboardViewX;->access$200(Lzui/widget/StandardKeyboardViewX;)V

    :goto_0
    return-void
.end method

.method public onPress(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX$1;->this$0:Lzui/widget/StandardKeyboardViewX;

    invoke-static {v0, p1}, Lzui/widget/StandardKeyboardViewX;->access$100(Lzui/widget/StandardKeyboardViewX;I)V

    return-void
.end method

.method public onRelease(I)V
    .locals 0

    .line 118
    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX$1;->this$0:Lzui/widget/StandardKeyboardViewX;

    invoke-static {p1}, Lzui/widget/StandardKeyboardViewX;->access$000(Lzui/widget/StandardKeyboardViewX;)V

    .line 119
    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX$1;->this$0:Lzui/widget/StandardKeyboardViewX;

    invoke-virtual {p1}, Lzui/widget/StandardKeyboardViewX;->invalidate()V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method
