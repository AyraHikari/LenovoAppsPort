.class Lzui/widget/BottomToolBar$2;
.super Ljava/lang/Object;
.source "BottomToolBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/BottomToolBar;->createMoreDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/BottomToolBar;


# direct methods
.method constructor <init>(Lzui/widget/BottomToolBar;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lzui/widget/BottomToolBar$2;->this$0:Lzui/widget/BottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 346
    iget-object p1, p0, Lzui/widget/BottomToolBar$2;->this$0:Lzui/widget/BottomToolBar;

    invoke-virtual {p1}, Lzui/widget/BottomToolBar;->closePopMenu()V

    return-void
.end method
