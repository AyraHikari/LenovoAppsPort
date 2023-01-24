.class Lzui/widget/ListViewX$StatusBarClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ListViewX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarClickReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/ListViewX;


# direct methods
.method private constructor <init>(Lzui/widget/ListViewX;)V
    .locals 0

    .line 2280
    iput-object p1, p0, Lzui/widget/ListViewX$StatusBarClickReceiver;->this$0:Lzui/widget/ListViewX;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/ListViewX;Lzui/widget/ListViewX$1;)V
    .locals 0

    .line 2280
    invoke-direct {p0, p1}, Lzui/widget/ListViewX$StatusBarClickReceiver;-><init>(Lzui/widget/ListViewX;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2284
    iget-object p1, p0, Lzui/widget/ListViewX$StatusBarClickReceiver;->this$0:Lzui/widget/ListViewX;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lzui/widget/ListViewX;->setSelection(I)V

    return-void
.end method
