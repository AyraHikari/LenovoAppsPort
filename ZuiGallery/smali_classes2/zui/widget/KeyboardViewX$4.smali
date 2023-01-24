.class Lzui/widget/KeyboardViewX$4;
.super Ljava/lang/Object;
.source "KeyboardViewX.java"

# interfaces
.implements Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/KeyboardViewX;->initKeyboardViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/KeyboardViewX;


# direct methods
.method constructor <init>(Lzui/widget/KeyboardViewX;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lzui/widget/KeyboardViewX$4;->this$0:Lzui/widget/KeyboardViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDonePress()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lzui/widget/KeyboardViewX$4;->this$0:Lzui/widget/KeyboardViewX;

    invoke-static {v0}, Lzui/widget/KeyboardViewX;->access$300(Lzui/widget/KeyboardViewX;)Z

    move-result v0

    return v0
.end method
