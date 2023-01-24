.class Lzui/widget/NumberPickerX$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPickerX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/NumberPickerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lzui/widget/NumberPickerX;


# direct methods
.method constructor <init>(Lzui/widget/NumberPickerX;)V
    .locals 0

    .line 1941
    iput-object p1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1945
    iput p1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    .line 1946
    iput p1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    .line 1966
    invoke-virtual {p0}, Lzui/widget/NumberPickerX$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 1967
    iput v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->mMode:I

    .line 1968
    iput p1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->mManagedButton:I

    .line 1969
    iget-object p1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Lzui/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    .line 1973
    invoke-virtual {p0}, Lzui/widget/NumberPickerX$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 1974
    iput v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->mMode:I

    .line 1975
    iput p1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->mManagedButton:I

    .line 1976
    iget-object p1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {p1, p0}, Lzui/widget/NumberPickerX;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    const/4 v0, 0x0

    .line 1952
    iput v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->mMode:I

    .line 1953
    iput v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->mManagedButton:I

    .line 1954
    iget-object v1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v1, p0}, Lzui/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1955
    iget-object v1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$800(Lzui/widget/NumberPickerX;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1956
    iget-object v1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1, v0}, Lzui/widget/NumberPickerX;->access$802(Lzui/widget/NumberPickerX;Z)Z

    .line 1957
    iget-object v1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$900(Lzui/widget/NumberPickerX;)I

    move-result v2

    iget-object v3, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v3}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v3

    iget-object v4, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v4}, Lzui/widget/NumberPickerX;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lzui/widget/NumberPickerX;->invalidate(IIII)V

    .line 1959
    :cond_0
    iget-object v1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1, v0}, Lzui/widget/NumberPickerX;->access$1002(Lzui/widget/NumberPickerX;Z)Z

    .line 1960
    iget-object v1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v1}, Lzui/widget/NumberPickerX;->access$1000(Lzui/widget/NumberPickerX;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1961
    iget-object v1, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v2

    iget-object v3, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v3}, Lzui/widget/NumberPickerX;->access$1100(Lzui/widget/NumberPickerX;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lzui/widget/NumberPickerX;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .line 1981
    iget v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1995
    :cond_0
    iget v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 2005
    :cond_1
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1000(Lzui/widget/NumberPickerX;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2006
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    .line 2007
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 2006
    invoke-virtual {v0, p0, v4, v5}, Lzui/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2009
    :cond_2
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$1000(Lzui/widget/NumberPickerX;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lzui/widget/NumberPickerX;->access$1002(Lzui/widget/NumberPickerX;Z)Z

    .line 2010
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v1

    iget-object v3, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v3}, Lzui/widget/NumberPickerX;->access$1100(Lzui/widget/NumberPickerX;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lzui/widget/NumberPickerX;->invalidate(IIII)V

    goto :goto_0

    .line 1997
    :cond_3
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$800(Lzui/widget/NumberPickerX;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1998
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    .line 1999
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 1998
    invoke-virtual {v0, p0, v4, v5}, Lzui/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2001
    :cond_4
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$800(Lzui/widget/NumberPickerX;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lzui/widget/NumberPickerX;->access$802(Lzui/widget/NumberPickerX;Z)Z

    .line 2002
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$900(Lzui/widget/NumberPickerX;)I

    move-result v1

    iget-object v3, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v3}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v3

    iget-object v4, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v4}, Lzui/widget/NumberPickerX;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lzui/widget/NumberPickerX;->invalidate(IIII)V

    goto :goto_0

    .line 1983
    :cond_5
    iget v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 1989
    :cond_6
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0, v3}, Lzui/widget/NumberPickerX;->access$1002(Lzui/widget/NumberPickerX;Z)Z

    .line 1990
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v1

    iget-object v3, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v3}, Lzui/widget/NumberPickerX;->access$1100(Lzui/widget/NumberPickerX;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lzui/widget/NumberPickerX;->invalidate(IIII)V

    goto :goto_0

    .line 1985
    :cond_7
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0, v3}, Lzui/widget/NumberPickerX;->access$802(Lzui/widget/NumberPickerX;Z)Z

    .line 1986
    iget-object v0, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-static {v0}, Lzui/widget/NumberPickerX;->access$900(Lzui/widget/NumberPickerX;)I

    move-result v1

    iget-object v3, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v3}, Lzui/widget/NumberPickerX;->getRight()I

    move-result v3

    iget-object v4, p0, Lzui/widget/NumberPickerX$PressedStateHelper;->this$0:Lzui/widget/NumberPickerX;

    invoke-virtual {v4}, Lzui/widget/NumberPickerX;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lzui/widget/NumberPickerX;->invalidate(IIII)V

    :goto_0
    return-void
.end method
