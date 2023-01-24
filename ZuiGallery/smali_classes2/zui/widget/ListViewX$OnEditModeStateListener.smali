.class public interface abstract Lzui/widget/ListViewX$OnEditModeStateListener;
.super Ljava/lang/Object;
.source "ListViewX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEditModeStateListener"
.end annotation


# virtual methods
.method public abstract getCustomizedTitle(Landroid/widget/ListView;I)Ljava/lang/String;
.end method

.method public abstract onExitEditMode(Landroid/widget/ListView;[Z)V
.end method

.method public abstract onItemCheckedChanged(Landroid/widget/ListView;IJZ)V
.end method

.method public abstract onMultiItemCheckedChanged(Landroid/widget/ListView;[Z)V
.end method

.method public abstract onPrepareEditMode(Landroid/widget/ListView;[Z)V
.end method

.method public abstract prepareCustomizedTitle(Landroid/widget/ListView;Landroid/view/View;)V
.end method
