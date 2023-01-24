.class public Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;
.super Ljava/lang/Object;
.source "SpeedChooseBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$OnSpeedChangeListener;
    }
.end annotation


# instance fields
.field private final SPEED_COUNT:I

.field private changeListener:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$OnSpeedChangeListener;

.field private currentSelectSpeedIndex:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rootView:Landroid/widget/LinearLayout;

.field private speed1:Landroid/widget/LinearLayout;

.field private speed2:Landroid/widget/LinearLayout;

.field private speed3:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$OnSpeedChangeListener;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->currentSelectSpeedIndex:I

    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->SPEED_COUNT:I

    .line 84
    new-instance v0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$1;-><init>(Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->onClickListener:Landroid/view/View$OnClickListener;

    .line 27
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->rootView:Landroid/widget/LinearLayout;

    const v0, 0x7f08031d

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->speed1:Landroid/widget/LinearLayout;

    .line 30
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08031e

    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->speed2:Landroid/widget/LinearLayout;

    .line 32
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08031f

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->speed3:Landroid/widget/LinearLayout;

    .line 34
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iput-object p2, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->changeListener:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$OnSpeedChangeListener;

    return-void
.end method


# virtual methods
.method public initRate(I)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    .line 53
    :goto_0
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->updateChooseIndex(I)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->rootView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateChooseIndex(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->speed1:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 61
    iget-object v2, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->speed2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 62
    iget-object v2, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->speed3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->speed3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    const/16 v0, 0x8

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->speed2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    const/4 v0, 0x4

    goto :goto_0

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->speed1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 78
    :goto_0
    iput p1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->currentSelectSpeedIndex:I

    .line 79
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->changeListener:Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$OnSpeedChangeListener;

    if-eqz p1, :cond_4

    int-to-float v0, v0

    .line 80
    invoke-interface {p1, v0}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar$OnSpeedChangeListener;->onSpeedChange(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateVisable(Z)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->rootView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 40
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    :cond_1
    iget p1, p0, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->currentSelectSpeedIndex:I

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/videoedit/SpeedChooseBar;->updateChooseIndex(I)V

    return-void
.end method
