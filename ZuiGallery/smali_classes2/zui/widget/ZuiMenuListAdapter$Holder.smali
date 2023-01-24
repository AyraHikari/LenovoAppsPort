.class Lzui/widget/ZuiMenuListAdapter$Holder;
.super Ljava/lang/Object;
.source "ZuiMenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/ZuiMenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field public arrow:Landroid/widget/ImageView;

.field public icon:Landroid/widget/ImageView;

.field public label:Landroid/widget/TextView;

.field final synthetic this$0:Lzui/widget/ZuiMenuListAdapter;


# direct methods
.method private constructor <init>(Lzui/widget/ZuiMenuListAdapter;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter$Holder;->this$0:Lzui/widget/ZuiMenuListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzui/widget/ZuiMenuListAdapter;Lzui/widget/ZuiMenuListAdapter$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lzui/widget/ZuiMenuListAdapter$Holder;-><init>(Lzui/widget/ZuiMenuListAdapter;)V

    return-void
.end method
