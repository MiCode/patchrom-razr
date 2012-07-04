.method public show(I)V
    .locals 2

    .prologue

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mScreenOn:Z

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->updateTorchCover(Z)V

    .line 96
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->show(I)V

    .line 97
    return-void
.end method
