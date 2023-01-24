.class Lzui/widget/BottomToolBar$ViewHolder;
.super Ljava/lang/Object;
.source "BottomToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/BottomToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lzui/widget/BottomToolBar;


# direct methods
.method private constructor <init>(Lzui/widget/BottomToolBar;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lzui/widget/BottomToolBar$ViewHolder;->this$0:Lzui/widget/BottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/BottomToolBar;Lzui/widget/BottomToolBar$1;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Lzui/widget/BottomToolBar$ViewHolder;-><init>(Lzui/widget/BottomToolBar;)V

    return-void
.end method
