.class public interface abstract Lcom/google/vr/sdk/widgets/video/deps/u;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/h$b;


# static fields
.field public static final a_:I = 0x0

.field public static final b_:I = 0x1

.field public static final c_:I = 0x2


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable(Lcom/google/vr/sdk/widgets/video/deps/w;[Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/db;JZJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation
.end method

.method public abstract getCapabilities()Lcom/google/vr/sdk/widgets/video/deps/v;
.end method

.method public abstract getMediaClock()Lcom/google/vr/sdk/widgets/video/deps/gw;
.end method

.method public abstract getState()I
.end method

.method public abstract getStream()Lcom/google/vr/sdk/widgets/video/deps/db;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract hasReadStreamToEnd()Z
.end method

.method public abstract isCurrentStreamFinal()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract maybeThrowStreamError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract render(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation
.end method

.method public abstract replaceStream([Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/db;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation
.end method

.method public abstract resetPosition(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation
.end method

.method public abstract setCurrentStreamFinal()V
.end method

.method public abstract setIndex(I)V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation
.end method
