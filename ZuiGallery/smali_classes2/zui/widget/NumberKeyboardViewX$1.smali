.class Lzui/widget/NumberKeyboardViewX$1;
.super Ljava/lang/Object;
.source "NumberKeyboardViewX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/NumberKeyboardViewX;->initKeyboardButtonViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/NumberKeyboardViewX;


# direct methods
.method constructor <init>(Lzui/widget/NumberKeyboardViewX;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX$1;->this$0:Lzui/widget/NumberKeyboardViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX$1;->this$0:Lzui/widget/NumberKeyboardViewX;

    invoke-static {v0, p1}, Lzui/widget/NumberKeyboardViewX;->access$000(Lzui/widget/NumberKeyboardViewX;Landroid/view/View;)V

    return-void
.end method
