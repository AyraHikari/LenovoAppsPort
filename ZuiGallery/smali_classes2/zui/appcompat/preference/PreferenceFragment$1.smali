.class Lzui/appcompat/preference/PreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/appcompat/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/PreferenceFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 p1, -0x1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto/16 :goto_0

    .line 163
    :cond_0
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p2}, Lzui/appcompat/preference/PreferenceFragment;->access$300(Lzui/appcompat/preference/PreferenceFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 164
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p2}, Lzui/appcompat/preference/PreferenceFragment;->access$400(Lzui/appcompat/preference/PreferenceFragment;)V

    .line 167
    :cond_1
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p2, p1}, Lzui/appcompat/preference/PreferenceFragment;->access$502(Lzui/appcompat/preference/PreferenceFragment;I)I

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 147
    iget-object v1, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {v1}, Lzui/appcompat/preference/PreferenceFragment;->access$200(Lzui/appcompat/preference/PreferenceFragment;)I

    move-result v1

    sub-int v1, p2, v1

    .line 148
    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {v3, p2}, Lzui/appcompat/preference/PreferenceFragment;->access$202(Lzui/appcompat/preference/PreferenceFragment;I)I

    .line 150
    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {v3}, Lzui/appcompat/preference/PreferenceFragment;->access$300(Lzui/appcompat/preference/PreferenceFragment;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 151
    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {v3}, Lzui/appcompat/preference/PreferenceFragment;->access$100(Lzui/appcompat/preference/PreferenceFragment;)I

    move-result v3

    sub-int/2addr p2, v3

    .line 152
    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {v3}, Lzui/appcompat/preference/PreferenceFragment;->access$000(Lzui/appcompat/preference/PreferenceFragment;)I

    move-result v3

    sub-int/2addr p1, v3

    .line 154
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p2, p1, :cond_6

    .line 156
    iget-object p1, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p1, v1, v0}, Lzui/appcompat/preference/PreferenceFragment;->access$600(Lzui/appcompat/preference/PreferenceFragment;IZ)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p2}, Lzui/appcompat/preference/PreferenceFragment;->access$300(Lzui/appcompat/preference/PreferenceFragment;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 132
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p2}, Lzui/appcompat/preference/PreferenceFragment;->access$400(Lzui/appcompat/preference/PreferenceFragment;)V

    .line 135
    :cond_4
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p2, v2}, Lzui/appcompat/preference/PreferenceFragment;->access$202(Lzui/appcompat/preference/PreferenceFragment;I)I

    .line 136
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p2, v2}, Lzui/appcompat/preference/PreferenceFragment;->access$002(Lzui/appcompat/preference/PreferenceFragment;I)I

    .line 137
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p2, v2}, Lzui/appcompat/preference/PreferenceFragment;->access$102(Lzui/appcompat/preference/PreferenceFragment;I)I

    .line 138
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p2, p1}, Lzui/appcompat/preference/PreferenceFragment;->access$502(Lzui/appcompat/preference/PreferenceFragment;I)I

    goto :goto_0

    .line 123
    :cond_5
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p2, p1}, Lzui/appcompat/preference/PreferenceFragment;->access$002(Lzui/appcompat/preference/PreferenceFragment;I)I

    .line 124
    iget-object p1, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p1, v0}, Lzui/appcompat/preference/PreferenceFragment;->access$102(Lzui/appcompat/preference/PreferenceFragment;I)I

    .line 125
    iget-object p1, p0, Lzui/appcompat/preference/PreferenceFragment$1;->this$0:Lzui/appcompat/preference/PreferenceFragment;

    invoke-static {p1, v0}, Lzui/appcompat/preference/PreferenceFragment;->access$202(Lzui/appcompat/preference/PreferenceFragment;I)I

    :cond_6
    :goto_0
    return v2
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
