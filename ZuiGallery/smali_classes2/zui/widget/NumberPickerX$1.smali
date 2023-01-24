.class Lzui/widget/NumberPickerX$1;
.super Ljava/lang/Object;
.source "NumberPickerX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/NumberPickerX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/widget/NumberPickerX;


# direct methods
.method constructor <init>(Lzui/widget/NumberPickerX;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lzui/widget/NumberPickerX$1;->this$0:Lzui/widget/NumberPickerX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 664
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "increment"

    invoke-static {v0}, Lzui/util/CommonUtils;->getAndroidInternalResId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 665
    iget-object p1, p0, Lzui/widget/NumberPickerX$1;->this$0:Lzui/widget/NumberPickerX;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lzui/widget/NumberPickerX;->access$100(Lzui/widget/NumberPickerX;Z)V

    goto :goto_0

    .line 667
    :cond_0
    iget-object p1, p0, Lzui/widget/NumberPickerX$1;->this$0:Lzui/widget/NumberPickerX;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzui/widget/NumberPickerX;->access$100(Lzui/widget/NumberPickerX;Z)V

    :goto_0
    return-void
.end method
