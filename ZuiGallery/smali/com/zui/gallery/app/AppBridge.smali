.class public abstract Lcom/zui/gallery/app/AppBridge;
.super Ljava/lang/Object;
.source "AppBridge.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/AppBridge$Server;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract attachScreenNail()Lcom/zui/gallery/ui/ScreenNail;
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract detachScreenNail()V
.end method

.method public abstract isPanorama()Z
.end method

.method public abstract isStaticCamera()Z
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onSingleTapUp(II)Z
.end method

.method public abstract setServer(Lcom/zui/gallery/app/AppBridge$Server;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
