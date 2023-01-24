.class Lzui/widget/KeyboardViewX$5;
.super Ljava/lang/Object;
.source "KeyboardViewX.java"

# interfaces
.implements Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;


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

    .line 201
    iput-object p1, p0, Lzui/widget/KeyboardViewX$5;->this$0:Lzui/widget/KeyboardViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyCharPress(Ljava/lang/String;)Z
    .locals 1

    .line 204
    iget-object v0, p0, Lzui/widget/KeyboardViewX$5;->this$0:Lzui/widget/KeyboardViewX;

    invoke-static {v0, p1}, Lzui/widget/KeyboardViewX;->access$400(Lzui/widget/KeyboardViewX;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
