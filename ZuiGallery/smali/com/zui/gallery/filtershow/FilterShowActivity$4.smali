.class Lcom/zui/gallery/filtershow/FilterShowActivity$4;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;->loadEditorPanel(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field final synthetic val$currentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field final synthetic val$currentId:I

.field final synthetic val$representation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;ILcom/zui/gallery/filtershow/editors/Editor;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iput p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->val$currentId:I

    iput-object p3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->val$currentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    iput-object p4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->val$representation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: look ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "curEdit"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const-string v2, "EditorPanel"

    const v3, 0x7f08032f

    const v4, 0x7f060159

    const-string v5, "CURVES"

    const v6, 0x7f08023b

    const v7, 0x7f060227

    const/4 v8, 0x7

    if-ne v0, v8, :cond_3

    .line 648
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;-><init>()V

    .line 649
    iget v8, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->val$currentId:I

    invoke-virtual {v0, v8}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->setEditor(I)V

    .line 650
    iget-object v8, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v8

    .line 653
    iget-object v9, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v9, v6}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const-string v9, "run: "

    .line 655
    invoke-static {v1, v9}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->val$currentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v1, :cond_0

    .line 658
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060229

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v5, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 663
    :cond_1
    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v1, :cond_2

    .line 664
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 667
    :cond_2
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 687
    :goto_0
    invoke-virtual {v8, v3, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 688
    invoke-virtual {v8}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_3

    .line 689
    :cond_3
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->val$representation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    instance-of v0, v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v0, :cond_7

    .line 690
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;-><init>()V

    .line 691
    iget v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->val$currentId:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->setEditor(I)V

    .line 692
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 693
    iget-object v8, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v8, v6}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 695
    iget-object v8, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->val$currentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 696
    sget-boolean v5, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v5, :cond_4

    .line 697
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/16 v6, 0x8f

    invoke-static {v5, v6}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 699
    :cond_4
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 702
    :cond_5
    sget-boolean v4, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v4, :cond_6

    .line 703
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 705
    :cond_6
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 708
    :goto_1
    invoke-virtual {v1, v3, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 709
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_3

    :cond_7
    const-string v0, "cancelTEST"

    const-string v1, "run: aaaaa"

    .line 721
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;-><init>()V

    .line 723
    iget v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->val$currentId:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->setEditor(I)V

    .line 724
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 725
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "MainPanel"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 726
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v2, v6}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 727
    sget-boolean v4, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v4, :cond_8

    .line 728
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 730
    :cond_8
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$4;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 732
    :goto_2
    invoke-virtual {v1, v6, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 733
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_3
    return-void
.end method
