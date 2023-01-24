.class Lzui/widget/ListViewXEditBar$1;
.super Ljava/lang/Object;
.source "ListViewXEditBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/ListViewXEditBar;-><init>(Landroid/widget/ListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/ListViewXEditBar;


# direct methods
.method constructor <init>(Lzui/widget/ListViewXEditBar;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lzui/widget/ListViewXEditBar$1;->this$0:Lzui/widget/ListViewXEditBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lzui/widget/ListViewXEditBar$1;->this$0:Lzui/widget/ListViewXEditBar;

    invoke-static {p1}, Lzui/widget/ListViewXEditBar;->access$000(Lzui/widget/ListViewXEditBar;)Lzui/widget/ListViewX;

    move-result-object p1

    invoke-virtual {p1}, Lzui/widget/ListViewX;->closeEditScreen()V

    return-void
.end method
