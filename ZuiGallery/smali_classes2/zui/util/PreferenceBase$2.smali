.class Lzui/util/PreferenceBase$2;
.super Ljava/lang/Object;
.source "PreferenceBase.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/util/PreferenceBase;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/util/PreferenceBase;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lzui/util/PreferenceBase;Landroid/view/ViewTreeObserver;Landroid/view/View;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lzui/util/PreferenceBase$2;->this$0:Lzui/util/PreferenceBase;

    iput-object p2, p0, Lzui/util/PreferenceBase$2;->val$vto:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lzui/util/PreferenceBase$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 112
    iget-object v0, p0, Lzui/util/PreferenceBase$2;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lzui/util/PreferenceBase$2;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lzui/util/PreferenceBase$2;->val$view:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 120
    :goto_0
    iget-object v3, p0, Lzui/util/PreferenceBase$2;->val$view:Landroid/view/View;

    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v4

    if-gt v0, v4, :cond_3

    .line 123
    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    add-int/2addr v2, v0

    .line 126
    :cond_3
    iget-object v0, p0, Lzui/util/PreferenceBase$2;->this$0:Lzui/util/PreferenceBase;

    invoke-static {v0}, Lzui/util/PreferenceBase;->access$000(Lzui/util/PreferenceBase;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    .line 127
    iget-object v0, p0, Lzui/util/PreferenceBase$2;->this$0:Lzui/util/PreferenceBase;

    invoke-static {v0, v2}, Lzui/util/PreferenceBase;->access$002(Lzui/util/PreferenceBase;I)I

    .line 128
    iget-object v0, p0, Lzui/util/PreferenceBase$2;->this$0:Lzui/util/PreferenceBase;

    invoke-static {v0, v3}, Lzui/util/PreferenceBase;->access$102(Lzui/util/PreferenceBase;Z)Z

    .line 130
    :cond_4
    iget-object v0, p0, Lzui/util/PreferenceBase$2;->this$0:Lzui/util/PreferenceBase;

    invoke-static {v0}, Lzui/util/PreferenceBase;->access$100(Lzui/util/PreferenceBase;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lzui/util/PreferenceBase$2;->this$0:Lzui/util/PreferenceBase;

    invoke-static {v0, v1}, Lzui/util/PreferenceBase;->access$102(Lzui/util/PreferenceBase;Z)Z

    .line 132
    iget-object v0, p0, Lzui/util/PreferenceBase$2;->this$0:Lzui/util/PreferenceBase;

    invoke-static {v0}, Lzui/util/PreferenceBase;->access$200(Lzui/util/PreferenceBase;)Lzui/util/PreferenceBase$PreferenceCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lzui/util/PreferenceBase$2;->this$0:Lzui/util/PreferenceBase;

    invoke-static {v0}, Lzui/util/PreferenceBase;->access$200(Lzui/util/PreferenceBase;)Lzui/util/PreferenceBase$PreferenceCallback;

    move-result-object v0

    invoke-interface {v0}, Lzui/util/PreferenceBase$PreferenceCallback;->refreshSelf()V

    :cond_5
    return v3
.end method
