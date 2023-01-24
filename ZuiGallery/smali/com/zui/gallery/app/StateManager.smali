.class public Lcom/zui/gallery/app/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/StateManager$StateEntry;
    }
.end annotation


# static fields
.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_MAIN:Ljava/lang/String; = "activity-state"

.field private static final KEY_STATE:Ljava/lang/String; = "bundle"

.field private static final TAG:Ljava/lang/String; = "StateManager"


# instance fields
.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mFolderPageStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/zui/gallery/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsResumed:Z

.field private mMainPageStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/zui/gallery/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/zui/gallery/app/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    .line 48
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/StateManager;->mMainPageStack:Ljava/util/Stack;

    .line 49
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    .line 54
    iput-object p1, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 56
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isViewContent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mMainPageStack:Ljava/util/Stack;

    :goto_0
    iput-object p1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    return-void
.end method

.method private freeResources()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mMainPageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 592
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    .line 594
    iget-object v1, v1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v1}, Lcom/zui/gallery/app/ActivityState;->freeResources()V

    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 597
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    .line 599
    iget-object v1, v1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v1}, Lcom/zui/gallery/app/ActivityState;->freeResources()V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public clearActivityResult()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->clearStateResult()V

    :cond_0
    return-void
.end method

.method public clearTasks()V
    .locals 2

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/ActivityState;->onCreateActionBar(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 2

    const-string v0, "StateManager"

    const-string v1, "destroy"

    .line 472
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 477
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    if-eqz v0, :cond_2

    .line 478
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    goto :goto_1

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    :cond_2
    return-void
.end method

.method public finishState(Lcom/zui/gallery/app/ActivityState;)V
    .locals 1

    const/4 v0, 0x1

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;Z)V

    return-void
.end method

.method finishState(Lcom/zui/gallery/app/ActivityState;Z)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 240
    iget-object p2, p0, Lcom/zui/gallery/app/StateManager;->mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    if-eqz p2, :cond_0

    .line 241
    iget p2, p2, Lcom/zui/gallery/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 243
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 247
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finish()V

    return-void

    .line 250
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StateManager"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    if-eq p1, v0, :cond_5

    .line 252
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "The state is already destroyed"

    .line 253
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 259
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    .line 261
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v3, v3, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_4

    .line 263
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 264
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->freeResources()V

    .line 266
    :cond_4
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    .line 267
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object p1, p1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 273
    iput-boolean v1, p1, Lcom/zui/gallery/app/ActivityState;->mIsFinishing:Z

    .line 274
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 275
    :goto_0
    iget-boolean v2, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_8

    if-eqz p2, :cond_8

    if-eqz v0, :cond_7

    .line 276
    instance-of p2, p1, Lcom/zui/gallery/app/ContinuousSelectionPage;

    if-nez p2, :cond_7

    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, p2, v2, v3}, Lcom/zui/gallery/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    .line 282
    :cond_7
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 287
    :cond_8
    iget-object p2, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/zui/gallery/ui/GLRoot;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    .line 288
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    if-eqz v0, :cond_9

    .line 290
    iget-boolean p1, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->resume()V

    :cond_9
    if-eqz v0, :cond_a

    .line 293
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Gallery"

    .line 292
    invoke-static {p2, p1}, Lcom/zui/gallery/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public getSecondStatNotEmpty()Lcom/zui/gallery/app/ActivityState;
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStateCount()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getTopState()Lcom/zui/gallery/app/ActivityState;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasStateClass(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zui/gallery/app/ActivityState;",
            ">;)Z"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    .line 536
    iget-object v1, v1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isActivityResumed()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    return v0
.end method

.method public isPhotoPageAtTop()Z
    .locals 1

    .line 576
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    instance-of v0, v0, Lcom/zui/gallery/app/PhotoPage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public itemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/ActivityState;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 208
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_2

    .line 209
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public notifyActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    .line 146
    iget-object v1, v1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    .line 152
    iget-object v1, v1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/app/ActivityState;->onMultiWindowModeChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    :cond_1
    return-void
.end method

.method public removePreState()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    .line 300
    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->freeResources()V

    .line 301
    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    return-void
.end method

.method public restoreFromState(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "StateManager"

    const-string v1, "restoreFromState"

    .line 487
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "activity-state"

    .line 488
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 490
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, p1, v3

    .line 491
    check-cast v2, Landroid/os/Bundle;

    const-string v4, "class"

    .line 493
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v5, "data"

    .line 495
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "bundle"

    .line 496
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 500
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreFromState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    iget-object v6, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4, v6, v5}, Lcom/zui/gallery/app/ActivityState;->initialize(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 506
    invoke-virtual {v4, v5, v2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 507
    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v6, Lcom/zui/gallery/app/StateManager$StateEntry;

    invoke-direct {v6, v5, v4}, Lcom/zui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/zui/gallery/app/ActivityState;)V

    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception p1

    .line 503
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    if-eqz v2, :cond_1

    .line 512
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Gallery"

    .line 511
    invoke-static {v0, p1}, Lcom/zui/gallery/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->resume()V

    :cond_1
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "StateManager"

    const-string v1, "saveState"

    .line 517
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    .line 521
    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/app/StateManager$StateEntry;

    .line 522
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 523
    iget-object v6, v4, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "class"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 524
    iget-object v6, v4, Lcom/zui/gallery/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    const-string v7, "data"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 525
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 526
    iget-object v7, v4, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v7, v6}, Lcom/zui/gallery/app/ActivityState;->onSaveState(Landroid/os/Bundle;)V

    const-string v7, "bundle"

    .line 527
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 528
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v3, 0x1

    .line 529
    aput-object v5, v1, v3

    move v3, v4

    goto :goto_0

    :cond_0
    const-string v0, "activity-state"

    .line 531
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zui/gallery/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, p1, v3}, Lcom/zui/gallery/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    .line 77
    iget-boolean v2, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 82
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Gallery"

    .line 80
    invoke-static {v1, p1}, Lcom/zui/gallery/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/ActivityState;->initialize(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 85
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    invoke-direct {v1, p2, v0}, Lcom/zui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/zui/gallery/app/ActivityState;)V

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 86
    invoke-virtual {v0, p2, p1}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 87
    iget-boolean p1, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->resume()V

    .line 95
    :cond_1
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "GallerySpeedSwitch"

    const-string v0, "-"

    invoke-virtual {p1, p2, v0}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zui/gallery/app/ActivityState;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-class v0, Lcom/zui/gallery/app/PhotoPage;

    if-eq p1, v0, :cond_0

    const-class v0, Lcom/zui/gallery/app/SinglePhotoPage;

    if-ne p1, v0, :cond_1

    .line 102
    :cond_0
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v2, "GallerySpeedDetail"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/util/LogDebug;->startTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startStateForResult "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StateManager"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2, p3}, Lcom/zui/gallery/app/ActivityState;->initialize(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 112
    new-instance v2, Lcom/zui/gallery/app/ActivityState$ResultEntry;

    invoke-direct {v2}, Lcom/zui/gallery/app/ActivityState$ResultEntry;-><init>()V

    iput-object v2, v0, Lcom/zui/gallery/app/ActivityState;->mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    .line 113
    iget-object v2, v0, Lcom/zui/gallery/app/ActivityState;->mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    iput p2, v2, Lcom/zui/gallery/app/ActivityState$ResultEntry;->requestCode:I

    .line 116
    iget-object p2, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p2

    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p2, v2, p1, v3}, Lcom/zui/gallery/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    .line 122
    iget-object v2, v0, Lcom/zui/gallery/app/ActivityState;->mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    iput-object v2, p2, Lcom/zui/gallery/app/ActivityState;->mReceivedResults:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    .line 123
    iget-boolean v2, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    goto :goto_0

    .line 125
    :cond_2
    iget-object p2, v0, Lcom/zui/gallery/app/ActivityState;->mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    iput-object p2, p0, Lcom/zui/gallery/app/StateManager;->mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    .line 128
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Gallery"

    .line 127
    invoke-static {p2, p1}, Lcom/zui/gallery/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance p2, Lcom/zui/gallery/app/StateManager$StateEntry;

    invoke-direct {p2, p3, v0}, Lcom/zui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/zui/gallery/app/ActivityState;)V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 130
    invoke-virtual {v0, p3, p1}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 131
    iget-boolean p1, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->resume()V

    .line 133
    :cond_4
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, v1, p2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public switchState(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/app/ActivityState;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zui/gallery/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StateManager"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    if-eq p1, v0, :cond_1

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    .line 315
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v1, v1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 318
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->freeResources()V

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    .line 321
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object p1, p1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    const-string v0, "app-bridge"

    .line 326
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 331
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 334
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->freeResources()V

    .line 337
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    .line 342
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v0, p3}, Lcom/zui/gallery/app/ActivityState;->initialize(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 347
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    invoke-direct {v1, p3, p1}, Lcom/zui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/zui/gallery/app/ActivityState;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p1, p3, v0}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 349
    iget-boolean p3, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->resume()V

    .line 351
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Gallery"

    .line 350
    invoke-static {p2, p1}, Lcom/zui/gallery/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 344
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public switchStateBetweenAllPhotoAndAlbumSet(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/app/ActivityState;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zui/gallery/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchState from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " current stack size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    if-eq p1, v0, :cond_2

    .line 357
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "The state is already destroyed"

    .line 358
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    .line 366
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 369
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->freeResources()V

    .line 371
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    .line 372
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object p1, p1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    .line 378
    :goto_1
    iget-object v3, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 379
    iget-object v3, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v3, v3, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 380
    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    .line 381
    invoke-virtual {v2}, Lcom/zui/gallery/app/ActivityState;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/zui/gallery/app/ActivityState;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v2, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    .line 388
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/zui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 390
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_6
    :goto_2
    if-eqz p1, :cond_8

    .line 396
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v0, p2, v3}, Lcom/zui/gallery/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    .line 398
    iget-boolean p2, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    :cond_7
    const/4 p2, 0x1

    .line 399
    iput-boolean p2, p1, Lcom/zui/gallery/app/ActivityState;->mIsFinishing:Z

    .line 400
    iget-object p2, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/zui/gallery/ui/GLRoot;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    .line 401
    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    .line 403
    :cond_8
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, p1, p3}, Lcom/zui/gallery/app/ActivityState;->initialize(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 404
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance p2, Lcom/zui/gallery/app/StateManager$StateEntry;

    invoke-direct {p2, p3, v2}, Lcom/zui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/zui/gallery/app/ActivityState;)V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {v2, p3, v1}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 406
    iget-boolean p1, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Lcom/zui/gallery/app/ActivityState;->resume()V

    :cond_9
    return-void
.end method

.method public switchStateNotDestory(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/app/ActivityState;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zui/gallery/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 414
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const-string v2, "app-bridge"

    if-ge v0, v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v1, v1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v1, p2, v3}, Lcom/zui/gallery/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const-string v3, "Gallery"

    if-ge v0, v1, :cond_4

    .line 427
    iget-object p3, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p3, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/app/StateManager$StateEntry;

    .line 428
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 429
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 430
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-boolean p1, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz p1, :cond_3

    iget-object p1, p3, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->resume()V

    .line 433
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 437
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "StateManager"

    invoke-static {v4, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v0, v0, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    if-ne p1, v0, :cond_8

    .line 445
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 447
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {p1, v0, p2, v1}, Lcom/zui/gallery/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    .line 453
    :cond_5
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 459
    :cond_6
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v0, p3}, Lcom/zui/gallery/app/ActivityState;->initialize(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 464
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    invoke-direct {v1, p3, p1}, Lcom/zui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/zui/gallery/app/ActivityState;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p1, p3, v0}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 466
    iget-boolean p3, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Lcom/zui/gallery/app/ActivityState;->resume()V

    .line 467
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 461
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 439
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    .line 440
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object p1, p1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public switchToFolderPage()V
    .locals 5

    .line 617
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 618
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 619
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "media-path"

    .line 618
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 622
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isViewContent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mMainPageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    iput-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    .line 629
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    iput-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    .line 631
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->resume()V

    :cond_2
    return-void

    .line 639
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/zui/gallery/app/AlbumSetPage;

    sget-object v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, v3, v4}, Lcom/zui/gallery/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    .line 643
    iget-boolean v1, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 644
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    iput-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    .line 646
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isViewContent()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mMainPageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 647
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v1, v1, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    .line 648
    iget-boolean v2, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_5

    .line 649
    invoke-virtual {v1}, Lcom/zui/gallery/app/ActivityState;->freeResources()V

    .line 651
    :cond_5
    invoke-virtual {v1}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    .line 657
    :cond_6
    :try_start_0
    const-class v1, Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/app/ActivityState;->initialize(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 662
    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v3, Lcom/zui/gallery/app/StateManager$StateEntry;

    invoke-direct {v3, v0, v1}, Lcom/zui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/zui/gallery/app/ActivityState;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 663
    invoke-virtual {v1, v0, v2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 664
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/zui/gallery/app/ActivityState;->resume()V

    .line 665
    :cond_7
    const-class v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gallery"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 659
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public switchToMainPage()V
    .locals 5

    .line 669
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 670
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    const/16 v2, 0xa

    .line 671
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "media-path"

    .line 670
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 675
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isViewContent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mMainPageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mFolderPageStack:Ljava/util/Stack;

    iput-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    goto :goto_0

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mMainPageStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/app/StateManager$StateEntry;

    iget-object v2, v2, Lcom/zui/gallery/app/StateManager$StateEntry;->activityState:Lcom/zui/gallery/app/ActivityState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    .line 682
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/StateManager;->mMainPageStack:Ljava/util/Stack;

    iput-object v0, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    .line 684
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/ActivityState;->resume()V

    :cond_2
    return-void

    .line 691
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    sget-object v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, v3, v4}, Lcom/zui/gallery/app/ActivityState;->transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    .line 695
    iget-boolean v1, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 696
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/app/StateManager;->mMainPageStack:Ljava/util/Stack;

    iput-object v1, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    .line 701
    :try_start_0
    const-class v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/app/ActivityState;->initialize(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Bundle;)V

    .line 706
    iget-object v2, p0, Lcom/zui/gallery/app/StateManager;->mStack:Ljava/util/Stack;

    new-instance v3, Lcom/zui/gallery/app/StateManager$StateEntry;

    invoke-direct {v3, v0, v1}, Lcom/zui/gallery/app/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/zui/gallery/app/ActivityState;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 707
    invoke-virtual {v1, v0, v2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 708
    iget-boolean v0, p0, Lcom/zui/gallery/app/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/zui/gallery/app/ActivityState;->resume()V

    .line 709
    :cond_5
    const-class v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gallery"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 703
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
